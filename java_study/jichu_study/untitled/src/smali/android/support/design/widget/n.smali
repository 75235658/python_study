.class Landroid/support/design/widget/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/n$b;,
        Landroid/support/design/widget/n$a;
    }
.end annotation


# static fields
.field private static a:Landroid/support/design/widget/n;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Landroid/os/Handler;

.field private d:Landroid/support/design/widget/n$b;

.field private e:Landroid/support/design/widget/n$b;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/n$1;

    invoke-direct {v2, p0}, Landroid/support/design/widget/n$1;-><init>(Landroid/support/design/widget/n;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/design/widget/n;->c:Landroid/os/Handler;

    return-void
.end method

.method static a()Landroid/support/design/widget/n;
    .locals 1

    sget-object v0, Landroid/support/design/widget/n;->a:Landroid/support/design/widget/n;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/design/widget/n;

    invoke-direct {v0}, Landroid/support/design/widget/n;-><init>()V

    sput-object v0, Landroid/support/design/widget/n;->a:Landroid/support/design/widget/n;

    :cond_0
    sget-object v0, Landroid/support/design/widget/n;->a:Landroid/support/design/widget/n;

    return-object v0
.end method

.method private a(Landroid/support/design/widget/n$b;I)Z
    .locals 2

    iget-object v0, p1, Landroid/support/design/widget/n$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/n$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/n;->c:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Landroid/support/design/widget/n$a;->a(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    if-eqz v0, :cond_1

    iput-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    iget-object v1, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    iget-object v1, v1, Landroid/support/design/widget/n$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/n$a;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/support/design/widget/n$a;->a()V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Landroid/support/design/widget/n$b;)V
    .locals 4

    iget v0, p1, Landroid/support/design/widget/n$b;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xabe

    iget v1, p1, Landroid/support/design/widget/n$b;->b:I

    if-lez v1, :cond_1

    iget v0, p1, Landroid/support/design/widget/n$b;->b:I

    goto :goto_0

    :cond_1
    iget v1, p1, Landroid/support/design/widget/n$b;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/16 v0, 0x5dc

    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/n;->c:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/support/design/widget/n;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private f(Landroid/support/design/widget/n$a;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/n$b;->a(Landroid/support/design/widget/n$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private g(Landroid/support/design/widget/n$a;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/n$b;->a(Landroid/support/design/widget/n$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Landroid/support/design/widget/n$a;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->f(Landroid/support/design/widget/n$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    iget-object p1, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/support/design/widget/n;->b()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/support/design/widget/n$a;I)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->f(Landroid/support/design/widget/n$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/n;->a(Landroid/support/design/widget/n$b;I)Z

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->g(Landroid/support/design/widget/n$a;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method a(Landroid/support/design/widget/n$b;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Landroid/support/design/widget/n;->a(Landroid/support/design/widget/n$b;I)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Landroid/support/design/widget/n$a;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->f(Landroid/support/design/widget/n$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->b(Landroid/support/design/widget/n$b;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Landroid/support/design/widget/n$a;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->f(Landroid/support/design/widget/n$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    iget-boolean p1, p1, Landroid/support/design/widget/n$b;->c:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/support/design/widget/n$b;->c:Z

    iget-object p1, p0, Landroid/support/design/widget/n;->c:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Landroid/support/design/widget/n$a;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->f(Landroid/support/design/widget/n$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    iget-boolean p1, p1, Landroid/support/design/widget/n$b;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/support/design/widget/n$b;->c:Z

    iget-object p1, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->b(Landroid/support/design/widget/n$b;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Landroid/support/design/widget/n$a;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->f(Landroid/support/design/widget/n$a;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->g(Landroid/support/design/widget/n$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
