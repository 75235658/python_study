.class public Landroid/support/v7/widget/RecyclerView$r$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:I


# direct methods
.method private b()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->e:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->c:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->c:I

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 5

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->d:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/RecyclerView$r$a;->d:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->b(I)V

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r$a;->f:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->f:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$r$a;->b()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->e:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->c:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/RecyclerView$u;

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$r$a;->b:I

    invoke-virtual {p1, v0, v2}, Landroid/support/v7/widget/RecyclerView$u;->b(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/RecyclerView$u;

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$r$a;->b:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$r$a;->c:I

    invoke-virtual {p1, v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$u;->a(III)V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/RecyclerView$u;

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$r$a;->b:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$r$a;->c:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$r$a;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$u;->a(IIILandroid/view/animation/Interpolator;)V

    :goto_0
    iget p1, p0, Landroid/support/v7/widget/RecyclerView$r$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView$r$a;->g:I

    iget p1, p0, Landroid/support/v7/widget/RecyclerView$r$a;->g:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_3

    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r$a;->f:Z

    goto :goto_1

    :cond_4
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$r$a;->g:I

    :goto_1
    return-void
.end method

.method a()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->d:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
