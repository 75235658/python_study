.class Landroid/support/v7/widget/ActionMenuPresenter$d;
.super Landroid/support/v7/widget/AppCompatImageView;

# interfaces
.implements Landroid/support/v7/widget/ActionMenuView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;

.field private final b:[F


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$d;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    sget v0, Landroid/support/v7/a/a$a;->actionOverflowButtonStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuPresenter$d;->b:[F

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ActionMenuPresenter$d;->setClickable(Z)V

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ActionMenuPresenter$d;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->setVisibility(I)V

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ActionMenuPresenter$d;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/support/v7/widget/aw;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    new-instance p2, Landroid/support/v7/widget/ActionMenuPresenter$d$1;

    invoke-direct {p2, p0, p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$d$1;-><init>(Landroid/support/v7/widget/ActionMenuPresenter$d;Landroid/view/View;Landroid/support/v7/widget/ActionMenuPresenter;)V

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ActionMenuPresenter$d;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$d;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->f()Z

    return v1
.end method

.method protected setFrame(IIII)Z
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatImageView;->setFrame(IIII)Z

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getHeight()I

    move-result p4

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p4, v2

    div-int/lit8 p4, p4, 0x2

    sub-int v1, p2, v0

    sub-int v2, p4, v0

    add-int/2addr p2, v0

    add-int/2addr p4, v0

    invoke-static {p3, v1, v2, p2, p4}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_0
    return p1
.end method
