.class public Landroid/support/design/widget/BaseTransientBottomBar$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/support/design/widget/n$a;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/SwipeDismissBehavior<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(F)V

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Landroid/support/design/widget/SwipeDismissBehavior;->b(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/BaseTransientBottomBar<",
            "*>;)V"
        }
    .end annotation

    iget-object p1, p1, Landroid/support/design/widget/BaseTransientBottomBar;->c:Landroid/support/design/widget/n$a;

    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$b;->a:Landroid/support/design/widget/n$a;

    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p2, v0, p3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/support/design/widget/n;->a()Landroid/support/design/widget/n;

    move-result-object p1

    iget-object p2, p0, Landroid/support/design/widget/BaseTransientBottomBar$b;->a:Landroid/support/design/widget/n$a;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/n;->c(Landroid/support/design/widget/n$a;)V

    goto :goto_0

    :cond_0
    :pswitch_1
    invoke-static {}, Landroid/support/design/widget/n;->a()Landroid/support/design/widget/n;

    move-result-object p1

    iget-object p2, p0, Landroid/support/design/widget/BaseTransientBottomBar$b;->a:Landroid/support/design/widget/n$a;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/n;->d(Landroid/support/design/widget/n$a;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/view/View;)Z
    .locals 0

    instance-of p1, p1, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    return p1
.end method
