.class Lazy;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/p",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lazx;


# direct methods
.method constructor <init>(Lazx;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lazy;->b:Lazx;

    iput-object p2, p0, Lazy;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/ao;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 41
    new-instance v0, Lazz;

    invoke-static {}, Lazx;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lazz;-><init>(Lazy;Landroid/os/Handler;Lrx/ao;)V

    .line 49
    iget-object v1, p0, Lazy;->b:Lazx;

    invoke-static {v1}, Lazx;->a(Lazx;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lazy;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    new-instance v1, Lbaa;

    invoke-direct {v1, p0, v0}, Lbaa;-><init>(Lazy;Landroid/database/ContentObserver;)V

    invoke-static {v1}, Ldmc;->a(Ldje;)Lrx/ap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/ao;->a(Lrx/ap;)V

    .line 61
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lazy;->a(Lrx/ao;)V

    return-void
.end method
