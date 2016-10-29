.class Lawx;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/base/o;


# instance fields
.field final synthetic a:Lawv;


# direct methods
.method constructor <init>(Lawv;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lawx;->a:Lawv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/twitter/android/PermissionResult;)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xfffL
        .end annotation
    .end param

    .prologue
    .line 225
    invoke-static {}, Lawv;->t()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Lcom/twitter/android/PermissionResult;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lawx;->a:Lawv;

    invoke-static {v0}, Lawv;->a(Lawv;)Lcom/twitter/android/widget/ar;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/widget/ar;->d()V

    .line 227
    iget-object v0, p0, Lawx;->a:Lawv;

    invoke-static {v0}, Lawv;->c(Lawv;)V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-static {}, Lawv;->t()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 229
    invoke-virtual {p2}, Lcom/twitter/android/PermissionResult;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lawx;->a:Lawv;

    iget-object v1, p0, Lawx;->a:Lawv;

    invoke-static {v1}, Lawv;->d(Lawv;)I

    move-result v1

    invoke-virtual {v0, v1}, Lawv;->a(I)V

    .line 232
    :cond_2
    iget-object v0, p0, Lawx;->a:Lawv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lawv;->a(Lawv;I)I

    goto :goto_0
.end method
