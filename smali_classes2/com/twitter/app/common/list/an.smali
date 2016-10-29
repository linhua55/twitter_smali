.class public Lcom/twitter/app/common/list/an;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/app/common/list/an;


# instance fields
.field public final b:Z

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 656
    new-instance v0, Lcom/twitter/app/common/list/an;

    const/4 v1, 0x1

    .line 657
    invoke-static {}, Lcom/twitter/util/collection/au;->g()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/app/common/list/an;-><init>(ZLjava/util/Set;)V

    sput-object v0, Lcom/twitter/app/common/list/an;->a:Lcom/twitter/app/common/list/an;

    .line 656
    return-void
.end method

.method public constructor <init>(ZLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    iput-boolean p1, p0, Lcom/twitter/app/common/list/an;->b:Z

    .line 669
    iput-object p2, p0, Lcom/twitter/app/common/list/an;->c:Ljava/util/Set;

    .line 670
    return-void
.end method
