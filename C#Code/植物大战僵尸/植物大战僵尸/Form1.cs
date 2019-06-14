﻿using System;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Resources;
using System.Collections;
using System.Runtime;
using System.Collections.Generic;
using System.Threading;

namespace 植物大战僵尸
{
    public partial class Form1 : Form
    {
        enum FormState
        {
            Start,          //开始界面
            Gaming,         //游戏界面
            menu            //菜单界面
        }
        enum MouseState
        {
            PlantingPlant,
            None,
            SelectSun
        }
        Random Random;
        FrapsManage timer;
        Graphics g;
        Image map,Loginimage;
        Bitmap[] SunFlowerBitmaps, PeaShooterBitmaps,NormalZombieBitmaps;
        plant_1.Plants NowSettingPlant;
        FormState NowFormState;
        MouseState NowMouseState;
        bool Settingplant;
        int SunCount,targetfraps = 300;
        int[,] Map_HavePlant;
        AddZombieFactory zombieFactory;
        AddPlantFactory plantFactory;
        List<plant_1> plantlist;
        List<NormalZombie> Zombielist;
        PlantDrawFactory PlantDrawFactory;
        ZombieDrawFactory ZombieDrawFactory;
        public Form1()
        {
            InitializeComponent();

        }


        private void Form1_Load(object sender, EventArgs e)             //启动页面及启动按钮,以及加载资源
        {
            DoubleBuffered = true;
            SetStyle(ControlStyles.OptimizedDoubleBuffer |
                        ControlStyles.ResizeRedraw |
                        ControlStyles.AllPaintingInWmPaint, true);
            g = this.CreateGraphics();
            NowFormState = FormState.Start;
            NowMouseState = MouseState.None;
            plantlist = new List<plant_1>();
            //PlantDrawFactory = new PlantDrawFactory(this);
            Zombielist = new List<NormalZombie>();
            Map_HavePlant = new int[9, 5];
            map = Properties.Resources.map;
            Loginimage = Properties.Resources.Logo;
            timer = new FrapsManage(targetfraps);
            this.BackgroundImage = Properties.Resources.Logo;           //设置背景
            this.Width = this.BackgroundImage.Width;
            this.Height = this.BackgroundImage.Height;
            SettingButton.Location = new Point(this.Width - SettingButton.Width, 0);        //调整菜单按钮位置
            Random = new Random();
        }

        private void button1_Click(object sender, EventArgs e)          //转入游戏界面
        {
            GameStart();
        }

        private void Form1_Click(object sender, EventArgs e)
        {
            
        }

        private void Form1_MouseClick(object sender, MouseEventArgs e)
        {

            Point NowLocation = this.PointToClient(Control.MousePosition);
            //Iplants plant = new Plants.plant_1(g, e.Location.X, e.Location.Y);       //用于测试植物生成
            if(NowMouseState == MouseState.PlantingPlant && !(NowLocation.X < 231 || NowLocation.X > 1000 || NowLocation.Y < 70 || NowLocation.Y > 578))
            {
                ClickToPlant(NowLocation);
                NowMouseState = MouseState.None;
                NowSettingPlant = plant_1.Plants.None;
            }
            else
            {
                NormalZombie normalZombie = zombieFactory.CreatZombie(NormalZombieBitmaps);
                normalZombie.m_g = this.CreateGraphics();
                normalZombie.SetDrawFactory();
                Zombielist.Add(normalZombie);

            }
        }

        private void SettingButton_Click(object sender, EventArgs e)        //菜单按钮按下事件
        {
            if(NowFormState == FormState.Gaming)
            {
                ShowSetting();
                timer.Delay();
            }
            else if(NowFormState == FormState.menu)
            {
                QuitSetting();
                timer.ReStart();
            }
            
        }

        private void QuitButton_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void SunCountLabel_TextChanged(object sender, EventArgs e)          //太阳数改变时事件
        {

        }

        private void PlantButton1_Click(object sender, EventArgs e)
        {
            NowMouseState = MouseState.PlantingPlant;
            NowSettingPlant = plant_1.Plants.sunflower;
        }

        private void PlantButton2_Click(object sender, EventArgs e)
        {
            NowMouseState = MouseState.PlantingPlant;
            NowSettingPlant = plant_1.Plants.peashooter;
        }

        private void Form1_Paint(object sender, PaintEventArgs e)
        {
            //RPGBitmap[g_iDirection].MakeTransparent(Color.White);             //去掉背景色

        }

        void GameStart()
        {
            NowFormState = FormState.Gaming;
            QuitButton.Enabled = false;
            QuitButton.Visible = false;
            PlantButton1.Visible = true;
            PlantButton1.BackgroundImage = Properties.Resources.SunFlowerLimpid;
            PlantButton2.Visible = true;
            PlantButton2.BackgroundImage = Properties.Resources.PeashooterLimpid;
            SunCountPicture.Visible = true;
            SunCountLabel.Visible = true;
            SunCount = 0;
            SunCountLabel.Text = SunCount.ToString();
            this.BackgroundImage = map;                 //设置背景地图
            this.Width = this.BackgroundImage.Width;
            this.Height = this.BackgroundImage.Height;
            button1.Visible = false;                      //隐藏开始按钮
            button1.Enabled = false;
            SettingButton.Location = new Point(this.Width - SettingButton.Width, 0);       //调整菜单按钮
            plantFactory = new AddPlantFactory();
            zombieFactory = new AddZombieFactory();
            LoadBitmaps();
            Thread thread = new Thread(Flip);
            thread.Start();
        }

        void ShowSetting()
        {
            QuitButton.Location = new Point(this.Width - QuitButton.Width - 50, this.Height - QuitButton.Height - 50);
            QuitButton.Enabled = true;
            QuitButton.Visible = true;
            NowFormState = FormState.menu;
        }

        void QuitSetting()
        {
            QuitButton.Visible = false;
            //QuitButton.Enabled = false;
            
            NowFormState = FormState.Gaming;
            Flip();
        }

        private void Form1_Move(object sender, EventArgs e)
        {
            
        }

        void GetSun(int num)
        {
            SunCount += num;
            SunCountLabel.Text = SunCount.ToString();
        }

        private void Form1_SizeChanged(object sender, EventArgs e)
        {
            g = this.CreateGraphics();
        }

        private void Form1_MouseMove(object sender, MouseEventArgs e)
        {
            //SunCountLabel.Text = this.PointToClient(Control.MousePosition).ToString();
            if (NowMouseState == MouseState.PlantingPlant || NowFormState == FormState.Gaming)
            {
                switch (NowSettingPlant)
                {
                    case plant_1.Plants.peashooter:
                        g.DrawImage(PeaShooterBitmaps[0], this.PointToClient(MousePosition));
                        break;
                    case plant_1.Plants.sunflower:
                        //  g.DrawImage(PeaShooterBitmaps[0], this.PointToClient(MousePosition));
                        break;
                    default:
                        break;
                }
            }
        }

        void UseSun(int num)
        {
            SunCount -= num;
            SunCountLabel.Text = SunCount.ToString();
        }

        void LoadBitmaps()
        {
            SunFlowerBitmaps = new Bitmap[12];
            PeaShooterBitmaps = new Bitmap[12];
            NormalZombieBitmaps = new Bitmap[12];
            for (int i = 0;i<=11;i++)
            {
                SunFlowerBitmaps[i] = new Bitmap(@".\bitmaps\SunFlower\" + i.ToString() + ".Png");
                PeaShooterBitmaps[i] = new Bitmap(@".\bitmaps\Peashooter\" + i.ToString() + ".Png");
                NormalZombieBitmaps[i] = new Bitmap(@".\bitmaps\NormalZombie\" + i.ToString() + ".Png");
            }
            
        }

        

        void Flip()
        {
            timer.flip.SetPlantMethod(plantlist);

            timer.flip.SetZombieMethod(Zombielist);
            /*
            while (NowFormState == FormState.Gaming)
            {
                //while(plantlist.Count() == 0 && Zombielist.Count() == 0) continue;
                timer.Start(this);
                this.Invalidate();
                
                //timer.Delay();
            }
            */
            timer.Start(this);
        }

        private void ClickToPlant(Point NowLocation)
        {
            int m_X, m_Y;
            m_X = MapManager.FixXLocation(NowLocation.X);
            m_Y = MapManager.FixYLocation(NowLocation.Y);
            if (m_X > 8 || m_Y > 4) return;
            if (Map_HavePlant[m_X, m_Y] == 0)//判断该点是否已有植物
            {

                Map_HavePlant[m_X, m_Y] = 1;
                plant_1 m_plant = new plant_1();
                switch (NowSettingPlant)
                {
                    case plant_1.Plants.sunflower:
                        {
                            //m_plant.bitmap = Properties.Resources.SunFlower1;
                            //m_plant.LoadBitmap(@".\bitmaps\Sunflower\");              //对读取路径的多个测试
                            //Graphics M_g = this.CreateGraphics();
                            m_plant = plantFactory.CreatPlant(MapManager.ReturnFixX(m_X), MapManager.ReturnFixY(m_Y), SunFlowerBitmaps);//放置栅格化定位植物位置
                            m_plant.m_g = this.CreateGraphics();
                            m_plant.SetDrawFactory();
                            break;
                        }
                    case plant_1.Plants.peashooter:
                        {
                            //m_plant.bitmap = Properties.Resources.Peashooter1;
                            //m_plant.LoadBitmap(@".\bitmaps\Peashooter\");
                            //Graphics M_g = this.CreateGraphics();
                            m_plant = plantFactory.CreatPlant(MapManager.ReturnFixX(m_X), MapManager.ReturnFixY(m_Y), PeaShooterBitmaps);//放置栅格化定位植物位置
                            m_plant.m_g = this.CreateGraphics();
                            m_plant.SetDrawFactory();
                            break;
                        }
                }
                plantlist.Add(m_plant);
            }
            else
            {
                return;
            }
        }

        void ZombieBornTime()
        {
            
        }

        public void RefreshMap(object sender,System.Timers.ElapsedEventArgs e)
        {
            this.Invalidate();
            
        }
    }
}
