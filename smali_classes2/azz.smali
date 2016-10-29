.class Lazz;
.super Landroid/database/ContentObserver;
.source "Twttr"


# instance fields
.field final synthetic a:Lrx/ao;

.field final synthetic b:Lazy;


# direct methods
.method constructor <init>(Lazy;Landroid/os/Handler;Lrx/ao;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lazz;->b:Lazy;

    iput-object p3, p0, Lazz;->a:Lrx/ao;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lazz;->a:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lazz;->a:Lrx/ao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 47
    :cond_0
    return-void
.end method
