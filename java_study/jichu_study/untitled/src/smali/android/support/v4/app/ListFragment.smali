.class public Landroid/support/v4/app/ListFragment;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field a:Landroid/widget/ListAdapter;

.field private final ag:Ljava/lang/Runnable;

.field private final ah:Landroid/widget/AdapterView$OnItemClickListener;

.field b:Landroid/widget/ListView;

.field c:Landroid/view/View;

.field d:Landroid/widget/TextView;

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field g:Ljava/lang/CharSequence;

.field h:Z

.field private final i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->i:Landroid/os/Handler;

    new-instance v0, Landroid/support/v4/app/ListFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$1;-><init>(Landroid/support/v4/app/ListFragment;)V

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->ag:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v4/app/ListFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$2;-><init>(Landroid/support/v4/app/ListFragment;)V

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->ah:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private a(ZZ)V
    .locals 5

    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->c()V

    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->e:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Landroid/support/v4/app/ListFragment;->h:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/app/ListFragment;->h:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x10a0001

    const/high16 v4, 0x10a0000

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->j()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :goto_0
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->f:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->j()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :goto_1
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->e:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->f:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t be used with a custom content view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->b:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->r()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->b:Landroid/widget/ListView;

    goto :goto_1

    :cond_1
    const v1, 0xff0001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->d:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->d:Landroid/widget/TextView;

    if-nez v1, :cond_2

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->c:Landroid/view/View;

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v1, 0xff0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->e:Landroid/view/View;

    const v1, 0xff0003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->f:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->b:Landroid/widget/ListView;

    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->c:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->g:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->b:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_6
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ListFragment;->h:Z

    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->b:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->ah:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->a:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->a:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/ListFragment;->a(Landroid/widget/ListAdapter;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->e:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/support/v4/app/ListFragment;->a(ZZ)V

    :cond_8
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->i:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->ag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content view not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->j()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, 0xff0002

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0x11

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x101007a

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0xff0003

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0xff0001

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const p1, 0x102000a

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setId(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->c()V

    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->a:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-object p1, p0, Landroid/support/v4/app/ListFragment;->a:Landroid/widget/ListAdapter;

    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->b:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-boolean p1, p0, Landroid/support/v4/app/ListFragment;->h:Z

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->r()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v2, v1}, Landroid/support/v4/app/ListFragment;->a(ZZ)V

    :cond_2
    return-void
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->i:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->ag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->b:Landroid/widget/ListView;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/ListFragment;->h:Z

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->f:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->e:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->c:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->d:Landroid/widget/TextView;

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->g()V

    return-void
.end method