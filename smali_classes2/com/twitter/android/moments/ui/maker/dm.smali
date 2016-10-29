.class Lcom/twitter/android/moments/ui/maker/dm;
.super Lrx/ao;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/ao",
        "<",
        "Lcom/twitter/android/moments/data/maker/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/dk;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/dk;J)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/dm;->b:Lcom/twitter/android/moments/ui/maker/dk;

    iput-wide p2, p0, Lcom/twitter/android/moments/ui/maker/dm;->a:J

    invoke-direct {p0}, Lrx/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/data/maker/a;)V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dm;->b:Lcom/twitter/android/moments/ui/maker/dk;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/dk;->a(Lcom/twitter/android/moments/ui/maker/dk;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 79
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dm;->b:Lcom/twitter/android/moments/ui/maker/dk;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/dk;->a(Lcom/twitter/android/moments/ui/maker/dk;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/dm;->b:Lcom/twitter/android/moments/ui/maker/dk;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/maker/dk;->a(Lcom/twitter/android/moments/ui/maker/dk;)Landroid/app/Activity;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/moments/ui/maker/dm;->a:J

    invoke-static {v1, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 73
    invoke-static {p1}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p1, Lcom/twitter/android/moments/data/maker/a;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/dm;->a(Lcom/twitter/android/moments/data/maker/a;)V

    return-void
.end method

.method public bt_()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
