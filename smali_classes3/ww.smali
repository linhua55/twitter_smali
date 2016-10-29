.class public Lww;
.super Lcom/twitter/android/bt;
.source "Twttr"


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 18
    sget-object v0, Lcom/twitter/library/provider/ct;->a:Landroid/net/Uri;

    .line 20
    invoke-static {v0, p4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 19
    invoke-static {v0, p2, p3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcht;->a:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    .line 18
    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput-wide p2, p0, Lww;->a:J

    .line 23
    return-void
.end method


# virtual methods
.method public b()Lcgg;
    .locals 4

    .prologue
    .line 28
    invoke-super {p0}, Lcom/twitter/android/bt;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 29
    new-instance v1, Lcgg;

    iget-wide v2, p0, Lww;->a:J

    invoke-direct {v1, v0, v2, v3}, Lcgg;-><init>(Landroid/database/Cursor;J)V

    return-object v1
.end method

.method public synthetic loadInBackground()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lww;->b()Lcgg;

    move-result-object v0

    return-object v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lww;->b()Lcgg;

    move-result-object v0

    return-object v0
.end method
