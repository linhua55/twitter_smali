.class public Lcnn;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public a:Lcnl;

.field public b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcnx;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcnl;Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcnl;",
            "Ljava/util/Set",
            "<",
            "Lcnx;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcnn;->a:Lcnl;

    .line 23
    invoke-static {p2}, Lcom/twitter/util/collection/au;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcnn;->b:Ljava/util/Set;

    .line 24
    invoke-static {p3}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcnn;->c:Ljava/lang/String;

    .line 25
    return-void
.end method
