.class public Lbpu;
.super Lcom/twitter/library/api/ai;
.source "Twttr"


# instance fields
.field public final f:Lcom/twitter/model/livevideo/d;

.field public final g:I


# direct methods
.method public constructor <init>(Lcom/twitter/library/api/ag;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/twitter/library/api/ai;-><init>(Lcom/twitter/library/api/ag;)V

    .line 23
    iget-object v0, p1, Lcom/twitter/library/api/ag;->f:Lcom/twitter/model/livevideo/d;

    iput-object v0, p0, Lbpu;->f:Lcom/twitter/model/livevideo/d;

    .line 24
    iget v0, p1, Lcom/twitter/library/api/ag;->h:I

    iput v0, p0, Lbpu;->g:I

    .line 25
    return-void
.end method
