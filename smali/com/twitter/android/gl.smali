.class Lcom/twitter/android/gl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/model/core/Tweet;

.field final synthetic b:Lcom/twitter/android/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/GalleryActivity;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/twitter/android/gl;->b:Lcom/twitter/android/GalleryActivity;

    iput-object p2, p0, Lcom/twitter/android/gl;->a:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/twitter/android/gl;->b:Lcom/twitter/android/GalleryActivity;

    invoke-virtual {v0}, Lcom/twitter/android/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "co.vine.android"

    invoke-static {v0, v1}, Lcom/twitter/util/w;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1513
    iget-object v0, p0, Lcom/twitter/android/gl;->b:Lcom/twitter/android/GalleryActivity;

    invoke-virtual {v0}, Lcom/twitter/android/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/gl;->a:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcom/twitter/library/client/BrowserDataSourceFactory;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/client/BrowserDataSource;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/android/gl;->b:Lcom/twitter/android/GalleryActivity;

    .line 1514
    invoke-static {v0}, Lcom/twitter/android/GalleryActivity;->f(Lcom/twitter/android/GalleryActivity;)Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    iget-object v0, p0, Lcom/twitter/android/gl;->b:Lcom/twitter/android/GalleryActivity;

    const/16 v6, 0x9

    invoke-static {v0, v6}, Lcom/twitter/android/GalleryActivity;->a(Lcom/twitter/android/GalleryActivity;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/twitter/android/gl;->b:Lcom/twitter/android/GalleryActivity;

    .line 1515
    invoke-static {v0}, Lcom/twitter/android/GalleryActivity;->g(Lcom/twitter/android/GalleryActivity;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v8

    .line 1513
    invoke-static/range {v1 .. v8}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 1516
    return-void
.end method
