.class public Lorg/spongycastle/jcajce/provider/digest/SHA1$Mappings;
.super Lorg/spongycastle/jcajce/provider/digest/a;
.source "Twttr"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    const-class v0, Lorg/spongycastle/jcajce/provider/digest/SHA1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/digest/SHA1$Mappings;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/digest/a;-><init>()V

    .line 175
    return-void
.end method


# virtual methods
.method public a(Lorg/spongycastle/jcajce/provider/config/a;)V
    .locals 4

    .prologue
    .line 179
    const-string/jumbo v0, "MessageDigest.SHA-1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/jcajce/provider/digest/SHA1$Mappings;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "$Digest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string/jumbo v0, "Alg.Alias.MessageDigest.SHA1"

    const-string/jumbo v1, "SHA-1"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string/jumbo v0, "Alg.Alias.MessageDigest.SHA"

    const-string/jumbo v1, "SHA-1"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Alg.Alias.MessageDigest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ldhx;->i:Lorg/spongycastle/asn1/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SHA-1"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string/jumbo v0, "SHA1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/jcajce/provider/digest/SHA1$Mappings;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "$HashMac"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/spongycastle/jcajce/provider/digest/SHA1$Mappings;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "$KeyGenerator"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/jcajce/provider/digest/SHA1$Mappings;->a(Lorg/spongycastle/jcajce/provider/config/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string/jumbo v0, "SHA1"

    sget-object v1, Ldhy;->I:Lorg/spongycastle/asn1/l;

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/jcajce/provider/digest/SHA1$Mappings;->a(Lorg/spongycastle/jcajce/provider/config/a;Ljava/lang/String;Lorg/spongycastle/asn1/l;)V

    .line 186
    const-string/jumbo v0, "SHA1"

    sget-object v1, Ldhw;->o:Lorg/spongycastle/asn1/l;

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/jcajce/provider/digest/SHA1$Mappings;->a(Lorg/spongycastle/jcajce/provider/config/a;Ljava/lang/String;Lorg/spongycastle/asn1/l;)V

    .line 188
    const-string/jumbo v0, "Mac.PBEWITHHMACSHA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/jcajce/provider/digest/SHA1$Mappings;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "$SHA1Mac"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string/jumbo v0, "Mac.PBEWITHHMACSHA1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/jcajce/provider/digest/SHA1$Mappings;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "$SHA1Mac"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHHMACSHA"

    const-string/jumbo v1, "PBEWITHHMACSHA1"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Alg.Alias.SecretKeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ldhx;->i:Lorg/spongycastle/asn1/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PBEWITHHMACSHA1"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Alg.Alias.Mac."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ldhx;->i:Lorg/spongycastle/asn1/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PBEWITHHMACSHA"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHHMACSHA1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/jcajce/provider/digest/SHA1$Mappings;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "$PBEWithMacKeyFactory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string/jumbo v0, "SecretKeyFactory.PBKDF2WithHmacSHA1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/jcajce/provider/digest/SHA1$Mappings;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "$PBKDF2WithHmacSHA1UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBKDF2WithHmacSHA1AndUTF8"

    const-string/jumbo v1, "PBKDF2WithHmacSHA1"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v0, "SecretKeyFactory.PBKDF2WithHmacSHA1And8BIT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/jcajce/provider/digest/SHA1$Mappings;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "$PBKDF2WithHmacSHA18BIT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method
