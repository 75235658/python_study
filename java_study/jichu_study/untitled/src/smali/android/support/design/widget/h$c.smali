.class Landroid/support/design/widget/h$c;
.super Landroid/support/design/widget/h$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/h;


# direct methods
.method constructor <init>(Landroid/support/design/widget/h;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/widget/h$c;->a:Landroid/support/design/widget/h;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/h$f;-><init>(Landroid/support/design/widget/h;Landroid/support/design/widget/h$1;)V

    return-void
.end method


# virtual methods
.method protected a()F
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/h$c;->a:Landroid/support/design/widget/h;

    iget v0, v0, Landroid/support/design/widget/h;->k:F

    iget-object v1, p0, Landroid/support/design/widget/h$c;->a:Landroid/support/design/widget/h;

    iget v1, v1, Landroid/support/design/widget/h;->m:F

    add-float/2addr v0, v1

    return v0
.end method
