.class public Lcom/twitter/model/topic/trends/f;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/topic/trends/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Lcom/twitter/model/topic/trends/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/topic/trends/g;-><init>(Lcom/twitter/model/topic/trends/b;)V

    sput-object v0, Lcom/twitter/model/topic/trends/f;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput p1, p0, Lcom/twitter/model/topic/trends/f;->b:I

    .line 180
    iput-wide p2, p0, Lcom/twitter/model/topic/trends/f;->c:J

    .line 181
    return-void
.end method
