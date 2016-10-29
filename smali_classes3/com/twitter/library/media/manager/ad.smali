.class Lcom/twitter/library/media/manager/ad;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:J

.field public final b:Lcom/twitter/internal/network/k;


# direct methods
.method constructor <init>(JLcom/twitter/internal/network/k;)V
    .locals 1

    .prologue
    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    iput-wide p1, p0, Lcom/twitter/library/media/manager/ad;->a:J

    .line 930
    iput-object p3, p0, Lcom/twitter/library/media/manager/ad;->b:Lcom/twitter/internal/network/k;

    .line 931
    return-void
.end method
