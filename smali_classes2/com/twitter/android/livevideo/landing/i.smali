.class Lcom/twitter/android/livevideo/landing/i;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/livevideo/landing/c;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/landing/c;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/i;->a:Lcom/twitter/android/livevideo/landing/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/i;->a:Lcom/twitter/android/livevideo/landing/c;

    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/c;->f(Lcom/twitter/android/livevideo/landing/c;)Lcom/twitter/android/livevideo/player/m;

    move-result-object v0

    .line 302
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/livevideo/player/m;->a(Z)Lcom/twitter/android/livevideo/player/m;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/i;->a:Lcom/twitter/android/livevideo/landing/c;

    .line 303
    invoke-static {v1}, Lcom/twitter/android/livevideo/landing/c;->b(Lcom/twitter/android/livevideo/landing/c;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/livevideo/player/m;->b(Landroid/content/Context;)V

    .line 304
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 298
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/twitter/android/livevideo/landing/i;->a(Ljava/lang/Boolean;)V

    return-void
.end method
