.class public Lcom/twitter/model/moments/ah;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/model/moments/aj;


# instance fields
.field public final b:Lcom/twitter/model/moments/ad;

.field public final c:Lcqt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/twitter/model/moments/aj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/moments/aj;-><init>(Lcom/twitter/model/moments/ai;)V

    sput-object v0, Lcom/twitter/model/moments/ah;->a:Lcom/twitter/model/moments/aj;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/moments/ad;Lcqt;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/twitter/model/moments/ah;->b:Lcom/twitter/model/moments/ad;

    .line 20
    iput-object p2, p0, Lcom/twitter/model/moments/ah;->c:Lcqt;

    .line 21
    return-void
.end method
