.class public final Landroid/support/v4/media/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Landroid/support/v4/media/j$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/media/l$a;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v4/media/l$a;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/media/m$a;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v4/media/m$a;-><init>(Ljava/lang/String;II)V

    :goto_0
    iput-object v0, p0, Landroid/support/v4/media/j$a;->a:Landroid/support/v4/media/j$b;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroid/support/v4/media/j$a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/j$a;->a:Landroid/support/v4/media/j$b;

    check-cast p1, Landroid/support/v4/media/j$a;

    iget-object p1, p1, Landroid/support/v4/media/j$a;->a:Landroid/support/v4/media/j$b;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/j$a;->a:Landroid/support/v4/media/j$b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
