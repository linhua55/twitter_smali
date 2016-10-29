.class Lcom/twitter/android/xd;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/concurrent/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/concurrent/e",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/UrlInterpreterActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/UrlInterpreterActivity;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcom/twitter/android/xd;->a:Lcom/twitter/android/UrlInterpreterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/twitter/android/xd;->a:Lcom/twitter/android/UrlInterpreterActivity;

    invoke-virtual {v0}, Lcom/twitter/android/UrlInterpreterActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 599
    if-eqz p1, :cond_0

    .line 600
    iget-object v0, p0, Lcom/twitter/android/xd;->a:Lcom/twitter/android/UrlInterpreterActivity;

    invoke-virtual {v0, p1}, Lcom/twitter/android/UrlInterpreterActivity;->startActivity(Landroid/content/Intent;)V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/xd;->a:Lcom/twitter/android/UrlInterpreterActivity;

    invoke-virtual {v0}, Lcom/twitter/android/UrlInterpreterActivity;->finish()V

    .line 604
    :cond_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 595
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/twitter/android/xd;->a(Landroid/content/Intent;)V

    return-void
.end method
