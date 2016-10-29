.class public Lcom/twitter/model/moments/ba;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/moments/ba;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/twitter/model/moments/ay;

.field public final c:Lcom/twitter/model/moments/aw;

.field public final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/twitter/model/moments/bb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/moments/bb;-><init>(Lcom/twitter/model/moments/au;)V

    sput-object v0, Lcom/twitter/model/moments/ba;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/moments/ay;Lcom/twitter/model/moments/aw;J)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/twitter/model/moments/ba;->b:Lcom/twitter/model/moments/ay;

    .line 118
    iput-object p2, p0, Lcom/twitter/model/moments/ba;->c:Lcom/twitter/model/moments/aw;

    .line 119
    iput-wide p3, p0, Lcom/twitter/model/moments/ba;->d:J

    .line 120
    return-void
.end method
