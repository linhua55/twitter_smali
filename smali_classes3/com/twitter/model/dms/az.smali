.class public Lcom/twitter/model/dms/az;
.super Lcom/twitter/model/dms/ax;
.source "Twttr"


# static fields
.field public static final d:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/dms/az;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/twitter/model/dms/bc;

    invoke-direct {v0}, Lcom/twitter/model/dms/bc;-><init>()V

    sput-object v0, Lcom/twitter/model/dms/az;->d:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/dms/bb;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/ax;-><init>(Lcom/twitter/model/dms/ay;)V

    .line 24
    const-string/jumbo v0, "b2c_nps_feedback_in_dm_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/dms/az;->e:Z

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/dms/bb;Lcom/twitter/model/dms/ba;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/az;-><init>(Lcom/twitter/model/dms/bb;)V

    return-void
.end method


# virtual methods
.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "2586390716:feedback_nps"

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/twitter/model/dms/ax;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/model/dms/az;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
