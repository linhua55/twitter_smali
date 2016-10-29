.class Lcom/twitter/library/provider/dy;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Lcom/twitter/model/timeline/ay;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/twitter/model/timeline/ay;J)V
    .locals 1

    .prologue
    .line 13708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13709
    iput-object p1, p0, Lcom/twitter/library/provider/dy;->a:Ljava/lang/String;

    .line 13710
    iput-object p2, p0, Lcom/twitter/library/provider/dy;->c:Lcom/twitter/model/timeline/ay;

    .line 13711
    iput-wide p3, p0, Lcom/twitter/library/provider/dy;->b:J

    .line 13712
    return-void
.end method
