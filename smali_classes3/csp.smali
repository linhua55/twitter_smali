.class public Lcsp;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcrx;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public final f:I


# direct methods
.method private constructor <init>(ZIILjava/util/List;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List",
            "<",
            "Lcrx;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcsp;->a:Z

    .line 30
    iput p2, p0, Lcsp;->b:I

    .line 31
    iput p3, p0, Lcsp;->c:I

    .line 32
    iput-object p4, p0, Lcsp;->d:Ljava/util/List;

    .line 33
    iput-object p5, p0, Lcsp;->e:Ljava/lang/String;

    .line 34
    iput p6, p0, Lcsp;->f:I

    .line 35
    return-void
.end method

.method synthetic constructor <init>(ZIILjava/util/List;Ljava/lang/String;ILcsq;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p6}, Lcsp;-><init>(ZIILjava/util/List;Ljava/lang/String;I)V

    return-void
.end method
