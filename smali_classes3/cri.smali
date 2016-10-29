.class public Lcri;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Lcrl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcrn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcrn;-><init>(Lcrj;)V

    sput-object v0, Lcri;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(Lcrk;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcrk;->a(Lcrk;)J

    move-result-wide v0

    iput-wide v0, p0, Lcri;->b:J

    .line 28
    invoke-static {p1}, Lcrk;->b(Lcrk;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcri;->c:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcrk;->c(Lcrk;)Lcrl;

    move-result-object v0

    iput-object v0, p0, Lcri;->d:Lcrl;

    .line 30
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcri;->d:Lcrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcri;->d:Lcrl;

    iget-object v0, v0, Lcrl;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
