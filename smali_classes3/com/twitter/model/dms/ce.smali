.class public Lcom/twitter/model/dms/ce;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:I


# direct methods
.method public constructor <init>(ZZI)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean p1, p0, Lcom/twitter/model/dms/ce;->a:Z

    .line 16
    iput-boolean p2, p0, Lcom/twitter/model/dms/ce;->b:Z

    .line 17
    iput p3, p0, Lcom/twitter/model/dms/ce;->c:I

    .line 18
    return-void
.end method
