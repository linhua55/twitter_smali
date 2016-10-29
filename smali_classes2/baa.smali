.class Lbaa;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Landroid/database/ContentObserver;

.field final synthetic b:Lazy;


# direct methods
.method constructor <init>(Lazy;Landroid/database/ContentObserver;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lbaa;->b:Lazy;

    iput-object p2, p0, Lbaa;->a:Landroid/database/ContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 58
    iget-object v0, p0, Lbaa;->b:Lazy;

    iget-object v0, v0, Lazy;->b:Lazx;

    invoke-static {v0}, Lazx;->a(Lazx;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lbaa;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 59
    return-void
.end method
