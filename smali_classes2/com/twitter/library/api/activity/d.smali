.class public Lcom/twitter/library/api/activity/d;
.super Lcom/twitter/library/service/o;
.source "Twttr"


# instance fields
.field private final a:J

.field private final b:I

.field private final c:Z

.field private final g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JZIZ)V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/twitter/library/api/activity/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/o;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 27
    iput-wide p3, p0, Lcom/twitter/library/api/activity/d;->a:J

    .line 28
    iput-boolean p5, p0, Lcom/twitter/library/api/activity/d;->g:Z

    .line 29
    iput p6, p0, Lcom/twitter/library/api/activity/d;->b:I

    .line 30
    iput-boolean p7, p0, Lcom/twitter/library/api/activity/d;->c:Z

    .line 31
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 11

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/twitter/library/api/activity/d;->h()Lcom/twitter/library/service/ab;

    move-result-object v6

    .line 37
    invoke-virtual {p0}, Lcom/twitter/library/api/activity/d;->s()Lcom/twitter/library/provider/dm;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/twitter/library/api/activity/d;->t()Lcom/twitter/library/provider/b;

    move-result-object v4

    .line 39
    iget-boolean v1, p0, Lcom/twitter/library/api/activity/d;->g:Z

    if-eqz v1, :cond_1

    .line 41
    iget v1, p0, Lcom/twitter/library/api/activity/d;->b:I

    iget-boolean v2, p0, Lcom/twitter/library/api/activity/d;->c:Z

    invoke-virtual {v0, v1, v4, v2}, Lcom/twitter/library/provider/dm;->a(ILcom/twitter/library/provider/b;Z)V

    .line 45
    :goto_0
    iget-object v1, p0, Lcom/twitter/library/api/activity/d;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v5

    .line 46
    iget v1, p0, Lcom/twitter/library/api/activity/d;->b:I

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/dm;->d(I)I

    move-result v9

    .line 47
    iget-wide v6, v6, Lcom/twitter/library/service/ab;->c:J

    const-string/jumbo v8, "unread_interactions"

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/twitter/library/provider/ar;->a(JLjava/lang/String;ILcom/twitter/library/provider/b;)I

    .line 48
    iget-boolean v0, p0, Lcom/twitter/library/api/activity/d;->c:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v4}, Lcom/twitter/library/provider/b;->a()V

    .line 51
    :cond_0
    return-void

    .line 43
    :cond_1
    iget v1, p0, Lcom/twitter/library/api/activity/d;->b:I

    iget-wide v2, p0, Lcom/twitter/library/api/activity/d;->a:J

    iget-boolean v5, p0, Lcom/twitter/library/api/activity/d;->c:Z

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/provider/dm;->a(IJLcom/twitter/library/provider/b;Z)I

    goto :goto_0
.end method
