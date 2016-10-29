.class Lcom/twitter/android/profiles/n;
.super Landroid/os/AsyncTask;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/twitter/media/model/MediaFile;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/model/media/EditableImage;

.field private final c:J

.field private d:Lcom/twitter/android/profiles/o;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/twitter/model/media/EditableImage;JLcom/twitter/android/profiles/o;)V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 156
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/profiles/n;->a:Ljava/lang/ref/WeakReference;

    .line 157
    iput-object p5, p0, Lcom/twitter/android/profiles/n;->d:Lcom/twitter/android/profiles/o;

    .line 158
    iput-object p2, p0, Lcom/twitter/android/profiles/n;->b:Lcom/twitter/model/media/EditableImage;

    .line 159
    iput-wide p3, p0, Lcom/twitter/android/profiles/n;->c:J

    .line 160
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/profiles/n;Lcom/twitter/android/profiles/o;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/twitter/android/profiles/n;->a(Lcom/twitter/android/profiles/o;)V

    return-void
.end method

.method private a(Lcom/twitter/android/profiles/o;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/twitter/android/profiles/n;->d:Lcom/twitter/android/profiles/o;

    .line 206
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/twitter/media/model/MediaFile;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/twitter/android/profiles/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 166
    iget-object v2, p0, Lcom/twitter/android/profiles/n;->b:Lcom/twitter/model/media/EditableImage;

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    .line 167
    iget-wide v2, p0, Lcom/twitter/android/profiles/n;->c:J

    invoke-static {v0, v2, v3}, Lcom/twitter/library/media/util/q;->c(Landroid/content/Context;J)Z

    .line 168
    iget-object v2, p0, Lcom/twitter/android/profiles/n;->b:Lcom/twitter/model/media/EditableImage;

    invoke-static {v0, v2}, Lcom/twitter/library/media/util/s;->a(Landroid/content/Context;Lcom/twitter/model/media/EditableMedia;)Lcom/twitter/media/model/MediaFile;

    move-result-object v2

    .line 169
    if-nez v2, :cond_0

    move-object v0, v1

    .line 192
    :goto_0
    return-object v0

    .line 172
    :cond_0
    iget-object v3, v2, Lcom/twitter/media/model/MediaFile;->d:Ljava/io/File;

    .line 173
    iget-wide v4, p0, Lcom/twitter/android/profiles/n;->c:J

    invoke-static {v0, v4, v5}, Lcom/twitter/library/media/util/q;->b(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v4

    .line 174
    if-nez v4, :cond_1

    move-object v0, v1

    .line 175
    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/profiles/n;->b:Lcom/twitter/model/media/EditableImage;

    iget-object v0, v0, Lcom/twitter/model/media/EditableImage;->k:Lcom/twitter/media/model/MediaFile;

    invoke-virtual {v2, v0}, Lcom/twitter/media/model/MediaFile;->a(Lcom/twitter/media/model/MediaFile;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 181
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 182
    :cond_3
    invoke-static {v3, v4}, Ldbt;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 183
    :cond_4
    sget-object v0, Lcom/twitter/media/model/MediaType;->b:Lcom/twitter/media/model/MediaType;

    invoke-static {v4, v0}, Lcom/twitter/media/model/MediaFile;->a(Ljava/io/File;Lcom/twitter/media/model/MediaType;)Lcom/twitter/media/model/MediaFile;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 185
    :cond_6
    if-eqz v0, :cond_7

    .line 186
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_7
    move-object v0, v1

    .line 188
    goto :goto_0

    :cond_8
    move-object v0, v1

    .line 192
    goto :goto_0
.end method

.method protected a(Lcom/twitter/media/model/MediaFile;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/twitter/android/profiles/n;->d:Lcom/twitter/android/profiles/o;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/twitter/android/profiles/n;->d:Lcom/twitter/android/profiles/o;

    invoke-interface {v0, p1}, Lcom/twitter/android/profiles/o;->b(Lcom/twitter/media/model/MediaFile;)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/media/model/MediaFile;->c()Lcom/twitter/util/concurrent/j;

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/profiles/n;->a([Ljava/lang/Void;)Lcom/twitter/media/model/MediaFile;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 148
    check-cast p1, Lcom/twitter/media/model/MediaFile;

    invoke-virtual {p0, p1}, Lcom/twitter/android/profiles/n;->a(Lcom/twitter/media/model/MediaFile;)V

    return-void
.end method
