.class public Laaq;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/ScribeItem;)Laap;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/twitter/library/scribe/i;

    invoke-direct {v0}, Lcom/twitter/library/scribe/i;-><init>()V

    invoke-static {p0, p1, p2, v0}, Laaq;->a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/ScribeItem;Lcom/twitter/library/scribe/bj;)Laap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/ScribeItem;Lcom/twitter/library/scribe/bj;)Laap;
    .locals 9

    .prologue
    .line 27
    invoke-static {}, Laao;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Laar;

    .line 29
    invoke-static {}, Laao;->b()J

    move-result-wide v4

    .line 30
    invoke-static {}, Laao;->c()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Laar;-><init>(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/ScribeItem;JJLcom/twitter/library/scribe/bj;)V

    .line 33
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Laav;->a:Laap;

    goto :goto_0
.end method
