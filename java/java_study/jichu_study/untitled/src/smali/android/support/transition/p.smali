.class public Landroid/support/transition/p;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Ljava/lang/Runnable;


# direct methods
.method static a(Landroid/view/View;)Landroid/support/transition/p;
    .locals 1

    sget v0, Landroid/support/transition/n$a;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/transition/p;

    return-object p0
.end method

.method static a(Landroid/view/View;Landroid/support/transition/p;)V
    .locals 1

    sget v0, Landroid/support/transition/n$a;->transition_current_scene:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/p;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/transition/p;->a(Landroid/view/View;)Landroid/support/transition/p;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Landroid/support/transition/p;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
