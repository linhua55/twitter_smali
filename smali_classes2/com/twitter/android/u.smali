.class public Lcom/twitter/android/u;
.super Lcom/twitter/android/bt;
.source "Twttr"


# instance fields
.field private final a:J

.field private final b:Lcbv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JLcbv;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iput-wide p7, p0, Lcom/twitter/android/u;->a:J

    .line 22
    iput-object p9, p0, Lcom/twitter/android/u;->b:Lcbv;

    .line 23
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 27
    invoke-super {p0}, Lcom/twitter/android/bt;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    .line 28
    new-instance v0, Lcom/twitter/android/h;

    iget-wide v2, p0, Lcom/twitter/android/u;->a:J

    invoke-virtual {p0}, Lcom/twitter/android/u;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/u;->b:Lcbv;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/h;-><init>(Landroid/database/Cursor;JLandroid/content/Context;Lcbv;)V

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/android/u;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
