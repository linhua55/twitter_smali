.class public Lcom/twitter/model/moments/bg;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/moments/bg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final c:Lcom/twitter/model/moments/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/twitter/model/moments/bi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/moments/bi;-><init>(Lcom/twitter/model/moments/bh;)V

    sput-object v0, Lcom/twitter/model/moments/bg;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(ILcom/twitter/model/moments/ad;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/twitter/model/moments/bg;->b:I

    .line 35
    iput-object p2, p0, Lcom/twitter/model/moments/bg;->c:Lcom/twitter/model/moments/ad;

    .line 36
    return-void
.end method
