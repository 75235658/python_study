.class public Landroid/support/transition/TransitionSet;
.super Landroid/support/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/TransitionSet$a;
    }
.end annotation


# instance fields
.field a:I

.field i:Z

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/Transition;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/TransitionSet;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/TransitionSet;->i:Z

    iput v0, p0, Landroid/support/transition/TransitionSet;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/TransitionSet;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/TransitionSet;->i:Z

    iput v0, p0, Landroid/support/transition/TransitionSet;->l:I

    sget-object v1, Landroid/support/transition/r;->i:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v1, "transitionOrdering"

    invoke-static {p1, p2, v1, v0, v0}, Landroid/support/v4/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/transition/TransitionSet;->a(I)Landroid/support/transition/TransitionSet;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private s()V
    .locals 3

    new-instance v0, Landroid/support/transition/TransitionSet$a;

    invoke-direct {v0, p0}, Landroid/support/transition/TransitionSet$a;-><init>(Landroid/support/transition/TransitionSet;)V

    iget-object v1, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, v0}, Landroid/support/transition/Transition;->a(Landroid/support/transition/Transition$c;)Landroid/support/transition/Transition;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroid/support/transition/TransitionSet;->a:I

    return-void
.end method


# virtual methods
.method public synthetic a(J)Landroid/support/transition/Transition;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/TransitionSet;->c(J)Landroid/support/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->b(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/support/transition/Transition$c;)Landroid/support/transition/Transition;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->c(Landroid/support/transition/Transition$c;)Landroid/support/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Landroid/support/transition/TransitionSet;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Landroid/support/transition/TransitionSet;->k:Z

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;
    .locals 4

    iget-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Landroid/support/transition/Transition;->e:Landroid/support/transition/TransitionSet;

    iget-wide v0, p0, Landroid/support/transition/TransitionSet;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/support/transition/TransitionSet;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/support/transition/Transition;->a(J)Landroid/support/transition/Transition;

    :cond_0
    iget v0, p0, Landroid/support/transition/TransitionSet;->l:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/transition/Transition;->a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    :cond_1
    iget v0, p0, Landroid/support/transition/TransitionSet;->l:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->o()Landroid/support/transition/u;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/transition/Transition;->a(Landroid/support/transition/u;)V

    :cond_2
    iget v0, p0, Landroid/support/transition/TransitionSet;->l:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->l()Landroid/support/transition/PathMotion;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/transition/Transition;->a(Landroid/support/transition/PathMotion;)V

    :cond_3
    iget v0, p0, Landroid/support/transition/TransitionSet;->l:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->m()Landroid/support/transition/Transition$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/transition/Transition;->a(Landroid/support/transition/Transition$b;)V

    :cond_4
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/transition/TransitionSet;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->c(Landroid/view/View;)Landroid/support/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->c(Landroid/view/View;)Landroid/support/transition/Transition;

    move-result-object p1

    check-cast p1, Landroid/support/transition/TransitionSet;

    return-object p1
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-super {p0, p1}, Landroid/support/transition/Transition;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Transition;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/transition/Transition;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(Landroid/support/transition/PathMotion;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/transition/Transition;->a(Landroid/support/transition/PathMotion;)V

    iget v0, p0, Landroid/support/transition/TransitionSet;->l:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/support/transition/TransitionSet;->l:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->a(Landroid/support/transition/PathMotion;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/support/transition/Transition$b;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/transition/Transition;->a(Landroid/support/transition/Transition$b;)V

    iget v0, p0, Landroid/support/transition/TransitionSet;->l:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/support/transition/TransitionSet;->l:I

    iget-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->a(Landroid/support/transition/Transition$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/support/transition/u;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/transition/Transition;->a(Landroid/support/transition/u;)V

    iget v0, p0, Landroid/support/transition/TransitionSet;->l:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/transition/TransitionSet;->l:I

    iget-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->a(Landroid/support/transition/u;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/support/transition/w;)V
    .locals 3

    iget-object v0, p1, Landroid/support/transition/w;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/transition/TransitionSet;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    iget-object v2, p1, Landroid/support/transition/w;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/transition/Transition;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->a(Landroid/support/transition/w;)V

    iget-object v2, p1, Landroid/support/transition/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected a(Landroid/view/ViewGroup;Landroid/support/transition/x;Landroid/support/transition/x;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/transition/x;",
            "Landroid/support/transition/x;",
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/w;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/w;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->c()J

    move-result-wide v1

    iget-object v3, v0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, v0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/support/transition/Transition;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    iget-boolean v5, v0, Landroid/support/transition/TransitionSet;->k:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    :cond_0
    invoke-virtual {v6}, Landroid/support/transition/Transition;->c()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    invoke-virtual {v6, v9, v10}, Landroid/support/transition/Transition;->b(J)Landroid/support/transition/Transition;

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v1, v2}, Landroid/support/transition/Transition;->b(J)Landroid/support/transition/Transition;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Landroid/support/transition/Transition;->a(Landroid/view/ViewGroup;Landroid/support/transition/x;Landroid/support/transition/x;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public b(I)Landroid/support/transition/Transition;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/transition/Transition;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic b(J)Landroid/support/transition/Transition;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/TransitionSet;->d(J)Landroid/support/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroid/support/transition/Transition$c;)Landroid/support/transition/Transition;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->d(Landroid/support/transition/Transition$c;)Landroid/support/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionSet;
    .locals 3

    iget v0, p0, Landroid/support/transition/TransitionSet;->l:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/transition/TransitionSet;->l:I

    iget-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    move-result-object p1

    check-cast p1, Landroid/support/transition/TransitionSet;

    return-object p1
.end method

.method public b(Landroid/support/transition/w;)V
    .locals 3

    iget-object v0, p1, Landroid/support/transition/w;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/transition/TransitionSet;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    iget-object v2, p1, Landroid/support/transition/w;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/transition/Transition;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->b(Landroid/support/transition/w;)V

    iget-object v2, p1, Landroid/support/transition/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic c(Landroid/view/View;)Landroid/support/transition/Transition;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->a(Landroid/view/View;)Landroid/support/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Landroid/support/transition/TransitionSet;
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/support/transition/Transition;->a(J)Landroid/support/transition/Transition;

    iget-wide v0, p0, Landroid/support/transition/TransitionSet;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1, p2}, Landroid/support/transition/Transition;->a(J)Landroid/support/transition/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public c(Landroid/support/transition/Transition$c;)Landroid/support/transition/TransitionSet;
    .locals 0

    invoke-super {p0, p1}, Landroid/support/transition/Transition;->a(Landroid/support/transition/Transition$c;)Landroid/support/transition/Transition;

    move-result-object p1

    check-cast p1, Landroid/support/transition/TransitionSet;

    return-object p1
.end method

.method c(Landroid/support/transition/w;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/transition/Transition;->c(Landroid/support/transition/w;)V

    iget-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->c(Landroid/support/transition/w;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->p()Landroid/support/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Landroid/view/View;)Landroid/support/transition/Transition;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->g(Landroid/view/View;)Landroid/support/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public d(J)Landroid/support/transition/TransitionSet;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/transition/Transition;->b(J)Landroid/support/transition/Transition;

    move-result-object p1

    check-cast p1, Landroid/support/transition/TransitionSet;

    return-object p1
.end method

.method public d(Landroid/support/transition/Transition$c;)Landroid/support/transition/TransitionSet;
    .locals 0

    invoke-super {p0, p1}, Landroid/support/transition/Transition;->b(Landroid/support/transition/Transition$c;)Landroid/support/transition/Transition;

    move-result-object p1

    check-cast p1, Landroid/support/transition/TransitionSet;

    return-object p1
.end method

.method protected e()V
    .locals 4

    iget-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->j()V

    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->k()V

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/transition/TransitionSet;->s()V

    iget-boolean v0, p0, Landroid/support/transition/TransitionSet;->k:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    iget-object v2, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    new-instance v3, Landroid/support/transition/TransitionSet$1;

    invoke-direct {v3, p0, v2}, Landroid/support/transition/TransitionSet$1;-><init>(Landroid/support/transition/TransitionSet;Landroid/support/transition/Transition;)V

    invoke-virtual {v1, v3}, Landroid/support/transition/Transition;->a(Landroid/support/transition/Transition$c;)Landroid/support/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Transition;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/transition/Transition;->e()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1}, Landroid/support/transition/Transition;->e()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/transition/Transition;->e(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->e(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/transition/Transition;->f(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->f(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Landroid/view/View;)Landroid/support/transition/TransitionSet;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->d(Landroid/view/View;)Landroid/support/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->d(Landroid/view/View;)Landroid/support/transition/Transition;

    move-result-object p1

    check-cast p1, Landroid/support/transition/TransitionSet;

    return-object p1
.end method

.method public p()Landroid/support/transition/Transition;
    .locals 4

    invoke-super {p0}, Landroid/support/transition/Transition;->p()Landroid/support/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/Transition;

    invoke-virtual {v3}, Landroid/support/transition/Transition;->p()Landroid/support/transition/Transition;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/transition/TransitionSet;->a(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, Landroid/support/transition/TransitionSet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
