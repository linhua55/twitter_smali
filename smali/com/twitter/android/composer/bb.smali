.class Lcom/twitter/android/composer/bb;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/util/concurrent/j;

.field final synthetic b:Lcom/twitter/android/composer/ba;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ba;Lcom/twitter/util/concurrent/j;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/twitter/android/composer/bb;->b:Lcom/twitter/android/composer/ba;

    iput-object p2, p0, Lcom/twitter/android/composer/bb;->a:Lcom/twitter/util/concurrent/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 161
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/composer/bb;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/twitter/android/composer/bb;->a:Lcom/twitter/util/concurrent/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/twitter/util/concurrent/j;->cancel(Z)Z

    .line 165
    return-void
.end method
