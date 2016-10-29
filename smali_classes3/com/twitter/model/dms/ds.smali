.class public Lcom/twitter/model/dms/ds;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/dms/ds;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/dms/Participant;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/twitter/model/dms/du;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/dms/du;-><init>(Lcom/twitter/model/dms/dq;)V

    sput-object v0, Lcom/twitter/model/dms/ds;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/dms/dt;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1}, Lcom/twitter/model/dms/dt;->a(Lcom/twitter/model/dms/dt;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/dms/ds;->b:Ljava/util/List;

    .line 76
    invoke-static {p1}, Lcom/twitter/model/dms/dt;->b(Lcom/twitter/model/dms/dt;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/dms/ds;->c:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Lcom/twitter/model/dms/dt;->c(Lcom/twitter/model/dms/dt;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/dms/ds;->d:Ljava/util/List;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/dms/dt;Lcom/twitter/model/dms/dq;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/ds;-><init>(Lcom/twitter/model/dms/dt;)V

    return-void
.end method
