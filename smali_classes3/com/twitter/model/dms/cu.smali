.class public Lcom/twitter/model/dms/cu;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/dms/cu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/twitter/model/dms/cx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/dms/cx;-><init>(Lcom/twitter/model/dms/cv;)V

    sput-object v0, Lcom/twitter/model/dms/cu;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/dms/cw;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/twitter/model/dms/cw;->a(Lcom/twitter/model/dms/cw;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/dms/cu;->b:Ljava/lang/String;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/dms/cw;Lcom/twitter/model/dms/cv;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/cu;-><init>(Lcom/twitter/model/dms/cw;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/model/dms/cu;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/twitter/model/dms/cu;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/model/dms/cu;->b:Ljava/lang/String;

    return-object v0
.end method
