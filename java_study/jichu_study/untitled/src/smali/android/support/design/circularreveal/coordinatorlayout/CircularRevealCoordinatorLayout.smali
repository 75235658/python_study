.class public Landroid/support/design/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
.super Landroid/support/design/widget/CoordinatorLayout;

# interfaces
.implements Landroid/support/design/circularreveal/c;


# instance fields
.field private final f:Landroid/support/design/circularreveal/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/support/design/circularreveal/b;

    invoke-direct {p1, p0}, Landroid/support/design/circularreveal/b;-><init>(Landroid/support/design/circularreveal/b$a;)V

    iput-object p1, p0, Landroid/support/design/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->f:Landroid/support/design/circularreveal/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->f:Landroid/support/design/circularreveal/b;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/b;->a()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->f:Landroid/support/design/circularreveal/b;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/b;->b()V

    return-void
.end method

.method public c()Z
    .locals 1

    invoke-super {p0}, Landroid/support/design/widget/CoordinatorLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->f:Landroid/support/design/circularreveal/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/design/circularreveal/b;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/design/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->f:Landroid/support/design/circularreveal/b;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/b;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->f:Landroid/support/design/circularreveal/b;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/b;->d()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Landroid/support/design/circularreveal/c$d;
    .locals 1

    iget-object v0, p0, Landroid/support/design/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->f:Landroid/support/design/circularreveal/b;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/b;->c()Landroid/support/design/circularreveal/c$d;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->f:Landroid/support/design/circularreveal/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/circularreveal/b;->f()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/design/widget/CoordinatorLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->f:Landroid/support/design/circularreveal/b;

    invoke-virtual {v0, p1}, Landroid/support/design/circularreveal/b;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->f:Landroid/support/design/circularreveal/b;

    invoke-virtual {v0, p1}, Landroid/support/design/circularreveal/b;->a(I)V

    return-void
.end method

.method public setRevealInfo(Landroid/support/design/circularreveal/c$d;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->f:Landroid/support/design/circularreveal/b;

    invoke-virtual {v0, p1}, Landroid/support/design/circularreveal/b;->a(Landroid/support/design/circularreveal/c$d;)V

    return-void
.end method
