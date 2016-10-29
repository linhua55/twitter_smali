.class public Lcom/twitter/model/moments/bd;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/moments/bd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/twitter/model/moments/bf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/moments/bf;-><init>(Lcom/twitter/model/moments/be;)V

    sput-object v0, Lcom/twitter/model/moments/bd;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/twitter/model/moments/bd;->c:I

    .line 24
    iput p2, p0, Lcom/twitter/model/moments/bd;->b:I

    .line 25
    return-void
.end method
