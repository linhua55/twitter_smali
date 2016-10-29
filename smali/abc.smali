.class Labc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/livevideo/player/l;


# instance fields
.field final synthetic a:Labb;


# direct methods
.method constructor <init>(Labb;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Labc;->a:Labb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/av/ar;)V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/twitter/library/av/ar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Labc;->a:Labb;

    invoke-virtual {v0}, Labb;->a()V

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Labc;->a:Labb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Labb;->a(Labb;Z)Z

    .line 57
    iget-object v0, p0, Labc;->a:Labb;

    invoke-static {v0}, Labb;->a(Labb;)Labd;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/library/av/ar;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Labd;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
