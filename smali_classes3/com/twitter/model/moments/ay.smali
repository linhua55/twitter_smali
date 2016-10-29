.class public Lcom/twitter/model/moments/ay;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/moments/ay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/twitter/model/moments/ad;

.field public final c:Lcqt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/twitter/model/moments/az;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/moments/az;-><init>(Lcom/twitter/model/moments/au;)V

    sput-object v0, Lcom/twitter/model/moments/ay;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/moments/ad;Lcqt;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/twitter/model/moments/ay;->b:Lcom/twitter/model/moments/ad;

    .line 80
    iput-object p2, p0, Lcom/twitter/model/moments/ay;->c:Lcqt;

    .line 81
    return-void
.end method
