.class Lcom/twitter/android/moments/data/bh;
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
        "Lcrc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/data/bg;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/bg;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/twitter/android/moments/data/bh;->a:Lcom/twitter/android/moments/data/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcrc;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/android/moments/data/bh;->a:Lcom/twitter/android/moments/data/bg;

    invoke-static {v0}, Lcom/twitter/android/moments/data/bg;->a(Lcom/twitter/android/moments/data/bg;)Laiu;

    move-result-object v0

    invoke-virtual {v0, p1}, Laiu;->a(Lcrc;)V

    .line 73
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 69
    check-cast p1, Lcrc;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/bh;->a(Lcrc;)V

    return-void
.end method
