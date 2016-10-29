.class public Lcom/twitter/model/moments/x;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/moments/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/twitter/model/moments/y;

    invoke-direct {v0}, Lcom/twitter/model/moments/y;-><init>()V

    sput-object v0, Lcom/twitter/model/moments/x;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/twitter/model/moments/x;->b:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/twitter/model/moments/x;->c:I

    .line 24
    iput p3, p0, Lcom/twitter/model/moments/x;->d:I

    .line 25
    return-void
.end method
