.class public Lcom/twitter/model/timeline/df;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/twitter/model/timeline/dh;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/twitter/model/timeline/dh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;",
            "Lcom/twitter/model/timeline/dh;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/twitter/model/timeline/df;->a:Ljava/util/List;

    .line 36
    iput-object p2, p0, Lcom/twitter/model/timeline/df;->b:Ljava/util/List;

    .line 37
    iput-object p3, p0, Lcom/twitter/model/timeline/df;->c:Lcom/twitter/model/timeline/dh;

    .line 38
    return-void
.end method
