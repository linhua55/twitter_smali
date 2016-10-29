.class Laar;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Laap;


# instance fields
.field private final a:Laat;

.field private final b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final c:Lcom/twitter/library/scribe/ScribeItem;

.field private d:J

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/ScribeItem;JJLcom/twitter/library/scribe/bj;)V
    .locals 8

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Laar;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 44
    iput-object p3, p0, Laar;->c:Lcom/twitter/library/scribe/ScribeItem;

    .line 45
    new-instance v0, Laat;

    iget-object v1, p0, Laar;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-object v2, p1

    move-object/from16 v3, p8

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Laat;-><init>(Lcom/twitter/library/scribe/TwitterScribeAssociation;Landroid/content/Context;Lcom/twitter/library/scribe/bj;JJ)V

    iput-object v0, p0, Laar;->a:Laat;

    .line 47
    return-void
.end method

.method static synthetic a(Laar;)Laat;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Laar;->a:Laat;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Laar;->a:Laat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laat;->a(Landroid/widget/ListView;)V

    .line 98
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 71
    if-ne p1, v1, :cond_1

    .line 72
    iput-boolean v1, p0, Laar;->f:Z

    .line 73
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    iput-wide v0, p0, Laar;->d:J

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 75
    iput-boolean v1, p0, Laar;->e:Z

    goto :goto_0

    .line 76
    :cond_2
    if-nez p1, :cond_0

    .line 78
    iget-boolean v0, p0, Laar;->e:Z

    if-eqz v0, :cond_3

    .line 79
    iget-wide v0, p0, Laar;->d:J

    .line 83
    :goto_1
    iget-object v2, p0, Laar;->a:Laat;

    invoke-virtual {v2, v0, v1, v3}, Laat;->a(JZ)Ljava/util/List;

    .line 84
    iput-boolean v3, p0, Laar;->e:Z

    goto :goto_0

    .line 81
    :cond_3
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    goto :goto_1
.end method

.method public a(JJ)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 103
    iget-object v0, p0, Laar;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Laar;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    iget-object v2, p0, Laar;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v2, :cond_0

    iget-object v1, p0, Laar;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v1

    .line 105
    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    const/4 v0, 0x2

    const-string/jumbo v1, "stream:linger:results"

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v1, p0, Laar;->a:Laat;

    .line 108
    invoke-virtual {v1, p3, p4, v3}, Laat;->a(JZ)Ljava/util/List;

    move-result-object v1

    .line 109
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v2, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Laar;->c:Lcom/twitter/library/scribe/ScribeItem;

    .line 111
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 112
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/List;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 110
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 113
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 115
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    .line 103
    goto :goto_0
.end method

.method public a(Landroid/view/View;Lcom/twitter/model/core/Tweet;)V
    .locals 4

    .prologue
    .line 51
    iget-boolean v0, p0, Laar;->f:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Laar;->a:Laat;

    invoke-virtual {v0, p1, p2}, Laat;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;)V

    .line 55
    iget-boolean v0, p0, Laar;->e:Z

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Laar;->a:Laat;

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Laat;->a(JZ)Ljava/util/List;

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Laas;

    invoke-direct {v1, p0, p1, p2}, Laas;-><init>(Laar;Landroid/view/View;Lcom/twitter/model/core/Tweet;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 67
    return-void
.end method

.method public a(Landroid/widget/ListView;)V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Laar;->a:Laat;

    invoke-virtual {v0, p1}, Laat;->a(Landroid/widget/ListView;)V

    .line 91
    iget-object v0, p0, Laar;->a:Laat;

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Laat;->a(JZ)Ljava/util/List;

    .line 92
    return-void
.end method
