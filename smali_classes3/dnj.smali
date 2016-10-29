.class final Ldnj;
.super Ldnu;
.source "Twttr"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Float;

.field private e:Ldnz;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ldnu;-><init>()V

    .line 115
    return-void
.end method


# virtual methods
.method public a()Ldnt;
    .locals 7

    .prologue
    .line 150
    const-string/jumbo v0, ""

    .line 151
    iget-object v1, p0, Ldnj;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " algorithm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_0
    iget-object v1, p0, Ldnj;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_1
    iget-object v1, p0, Ldnj;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " imagePreviewUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_2
    iget-object v1, p0, Ldnj;->d:Ljava/lang/Float;

    if-nez v1, :cond_3

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " totalScore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_3
    iget-object v1, p0, Ldnj;->e:Ldnz;

    if-nez v1, :cond_4

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " metadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 167
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_5
    new-instance v0, Ldnh;

    iget-object v1, p0, Ldnj;->a:Ljava/lang/String;

    iget-object v2, p0, Ldnj;->b:Ljava/lang/String;

    iget-object v3, p0, Ldnj;->c:Ljava/lang/String;

    iget-object v4, p0, Ldnj;->d:Ljava/lang/Float;

    .line 173
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Ldnj;->e:Ldnz;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ldnh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLdnz;Ldni;)V

    return-object v0
.end method

.method public a(F)Ldnu;
    .locals 1

    .prologue
    .line 140
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ldnj;->d:Ljava/lang/Float;

    .line 141
    return-object p0
.end method

.method public a(Ldnz;)Ldnu;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Ldnj;->e:Ldnz;

    .line 146
    return-object p0
.end method

.method public a(Ljava/lang/String;)Ldnu;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Ldnj;->a:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public b(Ljava/lang/String;)Ldnu;
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Ldnj;->b:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public c(Ljava/lang/String;)Ldnu;
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Ldnj;->c:Ljava/lang/String;

    .line 136
    return-object p0
.end method
