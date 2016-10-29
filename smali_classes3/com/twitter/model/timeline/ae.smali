.class public Lcom/twitter/model/timeline/ae;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/timeline/ae;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/twitter/model/timeline/ah;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/timeline/ah;-><init>(Lcom/twitter/model/timeline/af;)V

    sput-object v0, Lcom/twitter/model/timeline/ae;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/timeline/ag;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iget-object v0, p1, Lcom/twitter/model/timeline/ag;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/timeline/ae;->b:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/twitter/model/timeline/ag;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/timeline/ae;->c:Ljava/lang/String;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/ag;Lcom/twitter/model/timeline/af;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/twitter/model/timeline/ae;-><init>(Lcom/twitter/model/timeline/ag;)V

    return-void
.end method
