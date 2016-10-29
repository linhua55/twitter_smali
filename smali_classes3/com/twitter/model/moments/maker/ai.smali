.class Lcom/twitter/model/moments/maker/ai;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Lcqt;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/model/moments/maker/af;


# direct methods
.method constructor <init>(Lcom/twitter/model/moments/maker/af;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/twitter/model/moments/maker/ai;->a:Lcom/twitter/model/moments/maker/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcqt;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p1, Lcqt;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    check-cast p1, Lcqt;

    invoke-virtual {p0, p1}, Lcom/twitter/model/moments/maker/ai;->a(Lcqt;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
