.class public Lacr;
.super Lbab;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbab",
        "<",
        "Ljava/lang/Long;",
        "Lcom/twitter/util/collection/ar",
        "<",
        "Ljava/lang/Long;",
        "Lcom/twitter/model/moments/d;",
        ">;",
        "Lbpx;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/util/object/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/c",
            "<",
            "Ljava/lang/Long;",
            "Lbpx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/util/object/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/object/c",
            "<",
            "Ljava/lang/Long;",
            "Lbpx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lbab;-><init>()V

    .line 82
    iput-object p1, p0, Lacr;->a:Lcom/twitter/util/object/c;

    .line 83
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Long;)Lbpx;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lacr;->a:Lcom/twitter/util/object/c;

    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/util/object/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpx;

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Lcom/twitter/library/service/x;
    .locals 1

    .prologue
    .line 75
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lacr;->a(Ljava/lang/Long;)Lbpx;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lbpx;)Lcom/twitter/util/collection/ar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbpx;",
            ")",
            "Lcom/twitter/util/collection/ar",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p1}, Lbpx;->e()Lcom/twitter/model/moments/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1}, Lbpx;->e()Lcom/twitter/model/moments/d;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ar;->b(Ljava/lang/Object;)Lcom/twitter/util/collection/ar;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p1, Lbpx;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ar;->a(Ljava/lang/Object;)Lcom/twitter/util/collection/ar;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic a(Lcom/twitter/library/service/x;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    check-cast p1, Lbpx;

    invoke-virtual {p0, p1}, Lacr;->a(Lbpx;)Lcom/twitter/util/collection/ar;

    move-result-object v0

    return-object v0
.end method
