.class Lcom/twitter/android/moments/data/maker/j;
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
        "Lcqq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/data/maker/h;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/maker/h;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/twitter/android/moments/data/maker/j;->a:Lcom/twitter/android/moments/data/maker/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcqq;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/j;->a:Lcom/twitter/android/moments/data/maker/h;

    invoke-static {v0}, Lcom/twitter/android/moments/data/maker/h;->a(Lcom/twitter/android/moments/data/maker/h;)Lcet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcet;->a(Lcqq;)V

    .line 63
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p1, Lcqq;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/maker/j;->a(Lcqq;)V

    return-void
.end method
