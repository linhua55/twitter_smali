.class public Lcqt;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcqt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lcom/twitter/model/moments/MomentPageType;

.field public final d:Lcom/twitter/model/moments/z;

.field public final e:Lcom/twitter/model/moments/k;

.field public final f:Lcom/twitter/model/moments/bd;

.field public final g:Lcqn;

.field public final h:Lcom/twitter/model/moments/u;

.field public final i:Lcom/twitter/model/moments/ah;

.field public final j:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcqw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcqw;-><init>(Lcqu;)V

    sput-object v0, Lcqt;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcqv;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-object v0, p1, Lcqv;->a:Ljava/lang/String;

    iput-object v0, p0, Lcqt;->b:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcqv;->b:Lcom/twitter/model/moments/MomentPageType;

    iput-object v0, p0, Lcqt;->c:Lcom/twitter/model/moments/MomentPageType;

    .line 40
    iget-object v0, p1, Lcqv;->c:Lcom/twitter/model/moments/z;

    iput-object v0, p0, Lcqt;->d:Lcom/twitter/model/moments/z;

    .line 41
    iget-object v0, p1, Lcqv;->d:Lcom/twitter/model/moments/k;

    sget-object v1, Lcom/twitter/model/moments/k;->b:Lcom/twitter/model/moments/k;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/k;

    iput-object v0, p0, Lcqt;->e:Lcom/twitter/model/moments/k;

    .line 42
    iget-object v0, p1, Lcqv;->e:Lcom/twitter/model/moments/bd;

    iput-object v0, p0, Lcqt;->f:Lcom/twitter/model/moments/bd;

    .line 43
    iget-object v0, p1, Lcqv;->f:Lcqn;

    iput-object v0, p0, Lcqt;->g:Lcqn;

    .line 44
    iget-wide v0, p1, Lcqv;->i:J

    iput-wide v0, p0, Lcqt;->j:J

    .line 45
    iget-object v0, p1, Lcqv;->g:Lcom/twitter/model/moments/u;

    iput-object v0, p0, Lcqt;->h:Lcom/twitter/model/moments/u;

    .line 46
    iget-object v0, p1, Lcqv;->h:Lcom/twitter/model/moments/ah;

    iput-object v0, p0, Lcqt;->i:Lcom/twitter/model/moments/ah;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcqv;Lcqu;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcqt;-><init>(Lcqv;)V

    return-void
.end method
