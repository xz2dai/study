﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;

namespace 植物大战僵尸
{
    class AddZombieFactory : IAddItemFactory
    {
        public NormalZombie CreatZombie(Bitmap[] bitmaps)
        {
            NormalZombie normalZombie = new NormalZombie(bitmaps);
            return normalZombie;
        }

        public void DrawItem(IDrawFactory drawFactory, Graphics g, NormalZombie normalZombie)
        {
            drawFactory.TargetDraw(normalZombie.bitmap, g, normalZombie.Location.X, normalZombie.Location.Y);
        }
    }
}
