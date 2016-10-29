.class final Lcom/twitter/android/moments/data/ad;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcet;


# direct methods
.method constructor <init>(Lcet;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/twitter/android/moments/data/ad;->a:Lcet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/moments/data/ad;->a:Lcet;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcet;->b(JZ)V

    .line 26
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/ad;->a(Ljava/lang/Long;)V

    return-void
.end method
