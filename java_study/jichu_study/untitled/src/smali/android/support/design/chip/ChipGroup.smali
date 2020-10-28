.class public Landroid/support/design/chip/ChipGroup;
.super Landroid/support/design/internal/FlowLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/chip/ChipGroup$c;,
        Landroid/support/design/chip/ChipGroup$a;,
        Landroid/support/design/chip/ChipGroup$LayoutParams;,
        Landroid/support/design/chip/ChipGroup$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Landroid/support/design/chip/ChipGroup$b;

.field private final e:Landroid/support/design/chip/ChipGroup$a;

.field private f:Landroid/support/design/chip/ChipGroup$c;

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/design/a$b;->chipGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/support/design/chip/ChipGroup$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/design/chip/ChipGroup$a;-><init>(Landroid/support/design/chip/ChipGroup;Landroid/support/design/chip/ChipGroup$1;)V

    iput-object v0, p0, Landroid/support/design/chip/ChipGroup;->e:Landroid/support/design/chip/ChipGroup$a;

    new-instance v0, Landroid/support/design/chip/ChipGroup$c;

    invoke-direct {v0, p0, v1}, Landroid/support/design/chip/ChipGroup$c;-><init>(Landroid/support/design/chip/ChipGroup;Landroid/support/design/chip/ChipGroup$1;)V

    iput-object v0, p0, Landroid/support/design/chip/ChipGroup;->f:Landroid/support/design/chip/ChipGroup$c;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/chip/ChipGroup;->g:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/chip/ChipGroup;->h:Z

    sget-object v4, Landroid/support/design/a$k;->ChipGroup:[I

    sget v6, Landroid/support/design/a$j;->Widget_MaterialComponents_ChipGroup:I

    new-array v7, v1, [I

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v2 .. v7}, Landroid/support/design/internal/f;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Landroid/support/design/a$k;->ChipGroup_chipSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    sget p3, Landroid/support/design/a$k;->ChipGroup_chipSpacingHorizontal:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/support/design/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    sget p3, Landroid/support/design/a$k;->ChipGroup_chipSpacingVertical:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipGroup;->setChipSpacingVertical(I)V

    sget p2, Landroid/support/design/a$k;->ChipGroup_singleLine:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipGroup;->setSingleLine(Z)V

    sget p2, Landroid/support/design/a$k;->ChipGroup_singleSelection:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipGroup;->setSingleSelection(Z)V

    sget p2, Landroid/support/design/a$k;->ChipGroup_checkedChip:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_0

    iput p2, p0, Landroid/support/design/chip/ChipGroup;->g:I

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Landroid/support/design/chip/ChipGroup;->f:Landroid/support/design/chip/ChipGroup$c;

    invoke-super {p0, p1}, Landroid/support/design/internal/FlowLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private a(IZ)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/support/design/chip/Chip;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->h:Z

    check-cast p1, Landroid/support/design/chip/Chip;

    invoke-virtual {p1, p2}, Landroid/support/design/chip/Chip;->setChecked(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/design/chip/ChipGroup;->h:Z

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/design/chip/ChipGroup;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/design/chip/ChipGroup;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/design/chip/ChipGroup;->a(IZ)V

    return-void
.end method

.method static synthetic a(Landroid/support/design/chip/ChipGroup;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/design/chip/ChipGroup;->h:Z

    return p0
.end method

.method static synthetic b(Landroid/support/design/chip/ChipGroup;)I
    .locals 0

    iget p0, p0, Landroid/support/design/chip/ChipGroup;->g:I

    return p0
.end method

.method static synthetic c(Landroid/support/design/chip/ChipGroup;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/design/chip/ChipGroup;->c:Z

    return p0
.end method

.method static synthetic d(Landroid/support/design/chip/ChipGroup;)Landroid/support/design/chip/ChipGroup$a;
    .locals 0

    iget-object p0, p0, Landroid/support/design/chip/ChipGroup;->e:Landroid/support/design/chip/ChipGroup$a;

    return-object p0
.end method

.method private setCheckedId(I)V
    .locals 2

    iput p1, p0, Landroid/support/design/chip/ChipGroup;->g:I

    iget-object v0, p0, Landroid/support/design/chip/ChipGroup;->d:Landroid/support/design/chip/ChipGroup$b;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/support/design/chip/ChipGroup;->c:Z

    if-eqz v1, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/support/design/chip/ChipGroup$b;->a(Landroid/support/design/chip/ChipGroup;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->h:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/support/design/chip/Chip;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/support/design/chip/Chip;

    invoke-virtual {v2, v0}, Landroid/support/design/chip/Chip;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->h:Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    instance-of v0, p1, Landroid/support/design/chip/Chip;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/support/design/chip/Chip;

    invoke-virtual {v0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/design/chip/ChipGroup;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v2, p0, Landroid/support/design/chip/ChipGroup;->c:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/support/design/chip/ChipGroup;->a(IZ)V

    :cond_0
    invoke-virtual {v0}, Landroid/support/design/chip/Chip;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipGroup;->setCheckedId(I)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/internal/FlowLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/design/internal/FlowLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Landroid/support/design/chip/ChipGroup$LayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/support/design/chip/ChipGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/design/chip/ChipGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/support/design/chip/ChipGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/chip/ChipGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/design/chip/ChipGroup$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/chip/ChipGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCheckedChipId()I
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/chip/ChipGroup;->g:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getChipSpacingHorizontal()I
    .locals 1

    iget v0, p0, Landroid/support/design/chip/ChipGroup;->a:I

    return v0
.end method

.method public getChipSpacingVertical()I
    .locals 1

    iget v0, p0, Landroid/support/design/chip/ChipGroup;->b:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/support/design/internal/FlowLayout;->onFinishInflate()V

    iget v0, p0, Landroid/support/design/chip/ChipGroup;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/design/chip/ChipGroup;->a(IZ)V

    iget v0, p0, Landroid/support/design/chip/ChipGroup;->g:I

    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipGroup;->setCheckedId(I)V

    :cond_0
    return-void
.end method

.method public setChipSpacing(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setChipSpacingVertical(I)V

    return-void
.end method

.method public setChipSpacingHorizontal(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/chip/ChipGroup;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/chip/ChipGroup;->a:I

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setItemSpacing(I)V

    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChipSpacingHorizontalResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    return-void
.end method

.method public setChipSpacingResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setChipSpacing(I)V

    return-void
.end method

.method public setChipSpacingVertical(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/chip/ChipGroup;->b:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/chip/ChipGroup;->b:I

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setLineSpacing(I)V

    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChipSpacingVerticalResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setChipSpacingVertical(I)V

    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFlexWrap(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnCheckedChangeListener(Landroid/support/design/chip/ChipGroup$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/chip/ChipGroup;->d:Landroid/support/design/chip/ChipGroup$b;

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/chip/ChipGroup;->f:Landroid/support/design/chip/ChipGroup$c;

    invoke-static {v0, p1}, Landroid/support/design/chip/ChipGroup$c;->a(Landroid/support/design/chip/ChipGroup$c;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowDividerVertical(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSingleLine(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setSingleSelection(Z)V

    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->c:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/design/chip/ChipGroup;->c:Z

    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->a()V

    :cond_0
    return-void
.end method
