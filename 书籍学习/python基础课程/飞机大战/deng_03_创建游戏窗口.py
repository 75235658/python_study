import pygame

pygame.init()

#创建游戏的窗口 480*700
scren = pygame.display.set_mode((480,700))

#绘制背景图像
#1>加载图像数据
bg = pygame.image.load("d:\\Users\\娟娟爱吃屁屁\\Desktop\\python练习题\\飞机大战\\images\\background.png")
#2》blit  绘制图像
scren.blit(bg,(0,0))
#3》update 更新屏幕显示
pygame.display.update()

while True:
    pass


pygame.quit()