.class public Lcth;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lctg;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/twitter/model/timeline/dd;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/twitter/model/timeline/dd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lctg;",
            ">;",
            "Lcom/twitter/model/timeline/dd;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcth;->a:Ljava/util/List;

    .line 22
    iput-object p2, p0, Lcth;->b:Lcom/twitter/model/timeline/dd;

    .line 23
    return-void
.end method
