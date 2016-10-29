.class public Lcom/twitter/android/hb;
.super Lcom/twitter/android/bt;
.source "Twttr"


# instance fields
.field private final a:Lavh;

.field private final b:Lcom/twitter/android/revenue/d;

.field private final c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lavh;Lcom/twitter/android/revenue/d;Lavh;J)V
    .locals 7

    .prologue
    .line 23
    iget-object v2, p2, Lavh;->a:Landroid/net/Uri;

    iget-object v3, p2, Lavh;->b:[Ljava/lang/String;

    iget-object v4, p2, Lavh;->c:Ljava/lang/String;

    iget-object v5, p2, Lavh;->d:[Ljava/lang/String;

    iget-object v6, p2, Lavh;->e:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object p3, p0, Lcom/twitter/android/hb;->b:Lcom/twitter/android/revenue/d;

    .line 25
    iput-object p4, p0, Lcom/twitter/android/hb;->a:Lavh;

    .line 26
    iput-wide p5, p0, Lcom/twitter/android/hb;->c:J

    .line 27
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 31
    invoke-super {p0}, Lcom/twitter/android/bt;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 32
    invoke-static {}, Lcic;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/twitter/android/hb;->b:Lcom/twitter/android/revenue/d;

    .line 34
    invoke-virtual {p0}, Lcom/twitter/android/hb;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v4, p0, Lcom/twitter/android/hb;->c:J

    .line 33
    invoke-static {v2, v4, v5}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/hb;->a:Lavh;

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/revenue/d;->a(Lcom/twitter/library/provider/dm;Lavh;)V

    .line 36
    :cond_0
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/twitter/android/hb;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
