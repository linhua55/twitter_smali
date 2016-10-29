.class public Ltv/periscope/android/api/service/highlights/PsHighlight;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public algorithm:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "algorithm"
    .end annotation
.end field

.field public imagePreviewUrl:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "image_preview_url"
    .end annotation
.end field

.field public metadata:Ltv/periscope/android/api/service/highlights/PsHighlightMetadata;
    .annotation runtime Lnu;
        a = "metadata"
    .end annotation
.end field

.field public totalScore:F
    .annotation runtime Lnu;
        a = "total_score"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Ldnt;
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Ldnt;->f()Ldnu;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/service/highlights/PsHighlight;->algorithm:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v1}, Ldnu;->a(Ljava/lang/String;)Ldnu;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/service/highlights/PsHighlight;->url:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1}, Ldnu;->b(Ljava/lang/String;)Ldnu;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/service/highlights/PsHighlight;->imagePreviewUrl:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1}, Ldnu;->c(Ljava/lang/String;)Ldnu;

    move-result-object v0

    iget v1, p0, Ltv/periscope/android/api/service/highlights/PsHighlight;->totalScore:F

    .line 28
    invoke-virtual {v0, v1}, Ldnu;->a(F)Ldnu;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/service/highlights/PsHighlight;->metadata:Ltv/periscope/android/api/service/highlights/PsHighlightMetadata;

    .line 29
    invoke-virtual {v1}, Ltv/periscope/android/api/service/highlights/PsHighlightMetadata;->create()Ldnz;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldnu;->a(Ldnz;)Ldnu;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ldnu;->a()Ldnt;

    move-result-object v0

    return-object v0
.end method
